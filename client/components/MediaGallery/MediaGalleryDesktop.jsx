import "./mediaGalleryDesktop.css";
import { useEffect, useState } from "react";
import axios from "axios";
import { useAppContext } from "client/components/AppContext.jsx";

const MediaGalleryDesktop = ({
  currentProduct,
  toggleModal,
  scrollToPanel,
  showReviewModal,
}) => {
  const [mainImage, setMainImage] = useState("");
  const [images, setImages] = useState([]);
  const [reviewModalActive, setReviewModalActive] = useState(false);
  const { averageRating, totalReviews, totalQuestions } = useAppContext();

  const starNum = Math.round(parseFloat(averageRating));

  useEffect(() => {
    if (!currentProduct.id) return;

    const fetchData = async () => {
      try {
        const response = await axios.get(`/api/img_urls/${currentProduct.id}`);

        if (response.data.length > 0) {
          const imagesData = response.data.map((image) => ({
            original: `https://images.thdstatic.com/productImages/${image.img_url}600.jpg`,
            thumbnail: `https://images.thdstatic.com/productImages/${image.img_url}100.jpg`,
            id: `image${image.id}`,
          }));
          setImages(imagesData);
          setMainImage(imagesData[0].original);
        }
      } catch (error) {
        console.error("Error fetching image-urls for modal", error);
      }
    };
    fetchData();
  }, [currentProduct]);

  const checkReviewStatus = (number) => {
    let basePath = "./components/Accordion/CustomerReviewsContent/imgStar/";
    let fileExtension = "-star-pic.png";
    if (!number) {
      return "No Current Rating";
    } else {
      return (
        <img
          style={{ width: `${starNum * 20} + 10}px` }}
          className="star-icon"
          src={`${basePath}${number}${fileExtension}`}
        ></img>
      );
    }
  };

  const showThumbnails = () => {
    const visibleThumbnails = images.slice(0, 5); // limit to 6
    const remainingThumbnailsCount = images.length - visibleThumbnails.length;

    return (
      <>
        {visibleThumbnails.map((image) => (
          <button
            key={image.id}
            className="btn-thumbnail"
            onMouseEnter={() => handleThumbnailHover(image)}
          >
            <img
              src={image.thumbnail}
              className="thumbnail-image"
              alt={`Thumbnail ${image.id}`}
            />
          </button>
        ))}
        {remainingThumbnailsCount > 0 && (
          <div className="btn-thumbnail" onClick={toggleModal}>
            <img
              src={visibleThumbnails[visibleThumbnails.length - 1].thumbnail}
              className="thumbnail-image"
              alt={`Thumbnail ${
                visibleThumbnails[visibleThumbnails.length - 1].id
              }`}
            />
            <div className="thumbnail-overlay">
              <span className="gallery-overlay-text">
                +{remainingThumbnailsCount}
              </span>
            </div>
          </div>
        )}
      </>
    );
  };

  const handleClick = () => {
    toggleModal();
  };

  const handleThumbnailHover = (thumbnail) => {
    setMainImage(thumbnail.original);
  };

  const handleReviewHover = (e) => {
    const rect = e.target.getBoundingClientRect();
    const position = {
      top: rect.bottom,
      left: rect.left,
    };
    setReviewModalActive(true);
    showReviewModal(position);
    console.log("Hovering over Review");
  };

  const handleReviewsClick = () => {
    setReviewModalActive(false);
    scrollToPanel(3);
  };

  const handleQuestionsClick = () => {
    scrollToPanel(2);
  };

  // const handleQuestionsHover = () => {
  //   onMouseEnter
  // }

  return (
    <>
      <div className="gallery-container">
        <div className="gallery-header">
          <div className="gallery-best-seller">
            <p className="gallery-best-seller-content">Best Seller</p>
          </div>
          <div className="gallery-manufacturer">
            {currentProduct.manufacturer}
          </div>
          <div className="gallery-item-title">
            {currentProduct.product_name}
          </div>
          <div className="gallery-review-questions-container">
            <div
              className="gallery-review-summary"
              onClick={handleReviewsClick}
              onMouseEnter={handleReviewHover}
            >
              <span className="gallery-review-icon-container">
                {checkReviewStatus(starNum)}
              </span>
              {`(${totalReviews})`}
            </div>
            <div
              className="gallery-questions-summary"
              onClick={handleQuestionsClick}
            >
              <p>Questions & Answers {`(${totalQuestions})`}</p>
            </div>
          </div>
        </div>
        <div className="gallery-photos-container">
          <div className="gallery-thumbnail-column-container">
            {showThumbnails()}
          </div>
          <div className="gallery-main-image">
            <img src={mainImage} alt="Main Image" onClick={handleClick} />
          </div>
        </div>
        <div className="gallery-share-print-container">
          <div className="gallery-share-container">
            <button className="gallery-share-button">
              <img
                src="./components/MediaGallery/icons/shareIcon.png"
                alt="share arrow icon"
              ></img>
              Share
            </button>
          </div>
          <div className="gallery-print-container">
            <button className="gallery-print-button">
              <img
                // src="./components/MediaGallery/icons/printIcon.png"
                src="./assets/printIcon.png"
                alt="print icon"
              ></img>
              Print
            </button>
          </div>
        </div>
      </div>
    </>
  );
};

export default MediaGalleryDesktop;
