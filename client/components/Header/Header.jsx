import "./header.css";
import hdLogo from "client/assets/hdLogo.png";

const Header = ({ itemsInCart }) => {
  return (
    <>
      <header>
        <div id="tophat">
          <span id="tophat-span">#1 Home Improvement Retailer</span>
        </div>
        <div id="header-root">
          <div className="header-content">
            <div className="side-by-side" id="home-depot-logo">
              <img src={hdLogo} alt="Home Depot Logo" />
            </div>
            <div className="side-by-side" id="store-loc-time-zip">
              <div className="location-divs" id="storeLogo">
                <img
                  id="storePic"
                  src="./components/Header/header-images/store.png"
                  alt="Store Icon"
                />
              </div>
              <div className="location-divs" id="storeLocation">
                SW Color...
              </div>
              <div className="location-divs" id="storeTime">
                9PM
              </div>
              <div className="location-divs" id="truck">
                <img
                  id="truckPic"
                  src="./components/Header/header-images/truck.png"
                  alt="Truck Icon"
                />
              </div>
              <div className="location-divs" id="storeZip">
                86753
              </div>
            </div>
            <div className="side-by-side" id="searchbar">
              <input
                id="searchStuff"
                type="text"
                // id="searchInput"
                placeholder="What can we help you find today?"
              />
              <button onClick={() => performSearch()}>
                <img
                  src="./components/Header/header-images/search.png"
                  alt="Search Icon"
                />
              </button>
            </div>
            <div className="side-by-side" id="navIcons">
              <img
                src="./components/Header/header-images/bucket.png"
                alt="Bucket Icon"
              />
              <img
                src="./components/Header/header-images/services.png"
                alt="Services Icon"
              />
              <img
                src="./components/Header/header-images/DIY.png"
                alt="DIY Icon"
              />
              <img
                src="./components/Header/header-images/me.png"
                alt="Me Icon"
              />
            </div>
            <div className="side-by-side" id="cartIcon">
              <img
                src="./components/Header/header-images/cart.png"
                alt="Cart Logo"
              />
              <div style={{ display: itemsInCart == 0 ? "none" : "flex" }}>
                <span>{itemsInCart}</span>
              </div>
            </div>
          </div>
        </div>
      </header>
    </>
  );
};

export default Header;
