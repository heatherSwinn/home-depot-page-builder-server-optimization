import React, { useEffect, useState } from "react";
import Sidebar from "./Sidebar/Sidebar.jsx";
import Header from "./Header/Header.jsx";
import MediaGalleryDesktop from "./MediaGallery/MediaGalleryDesktop.jsx";
import axios from "axios";
import Accordion from "./Accordion/Accordion.jsx";
import MediaModal from "./MediaModal/MediaModal.jsx";
import ConsumerCardModal from "./Sidebar/ConsumerCardModal/ConsumerCardModal.jsx";
import NavigationBar from "./NavigationBar/NavigationBar.jsx";
import { AppProvider } from "./AppContext";
// import ReviewModal from "client/components/ReviewModal/ReviewModal.jsx";

const App = () => {
  const [currentProduct, setCurrentProduct] = useState([]);
  const [modal, setModal] = useState(false);
  const [isCardModal, setCardModal] = useState(false);
  const [isScrolling, setIsScrolling] = useState(false);
  const [panelToShow, SetPanelToShow] = useState(null);
  const [itemsInCart, setItemsInCart] = useState(0);
  const [isReviewModal, setIsReviewModal] = useState(false);
  const [hoverPosition, setHoverPosition] = useState({ top: 0, left: 0 });

  const toggleModal = () => {
    setModal(!modal);
  };

  const scrollToPanel = (index) => {
    setIsScrolling((prevIsScrolling) => !prevIsScrolling);
    SetPanelToShow(index);
  };

  const showReviewModal = (position) => {
    setHoverPosition(position);
    setIsReviewModal(true);
  };

  const hideReviewModal = () => {
    setIsReviewModal(false);
  };

  const ryobiDrill = 1;

  const dewaltDrill = 2;

  useEffect(() => {
    const { pathname } = window.location;
    const productId = pathname.split("/").pop();

    const fetchData = async () => {
      try {
        const response = await axios.get(`/api/p/${productId}`);
        setCurrentProduct(response.data[0]);
      } catch (error) {
        console.error("Error fetching product page", error);
      }
    };
    fetchData();
  }, []); // empty dependency array so only runs when component mounts

  return (
    <AppProvider currentProduct={currentProduct}>
      <main>
        <Header itemsInCart={itemsInCart} />
        {modal && (
          <MediaModal
            currentProduct={currentProduct}
            toggleModal={toggleModal}
            modal={modal}
          />
        )}
        {/* {isReviewModal && (
          <ReviewModal
            hoverPosition={hoverPosition}
            hideReviewModal={hideReviewModal}
          />
        )} */}
        <div className="item-wrapper bounding-box">
          <NavigationBar />
          <div className="picture-and-sidebar">
            <div className="img-gallery">
              <MediaGalleryDesktop
                currentProduct={currentProduct}
                toggleModal={toggleModal}
                // toggleReviewsActive={toggleReviewsActive}
                // isReviewsActive={isReviewsActive}
                scrollToPanel={scrollToPanel}
                showReviewModal={showReviewModal}
              />
            </div>
            <Sidebar
              currentProduct={currentProduct}
              setCardModal={setCardModal}
              setItemsInCart={setItemsInCart}
            />
          </div>
          <Accordion
            currentProduct={currentProduct}
            // toggleReviewsActive={toggleReviewsActive}
            // isReviewsActive={isReviewsActive}
            scrollToPanel={scrollToPanel}
            panelToShow={panelToShow}
            isScrolling={isScrolling}
          />
        </div>
        <ConsumerCardModal
          isCardModal={isCardModal}
          setCardModal={setCardModal}
        />
      </main>
    </AppProvider>
  );
};

export default App;
