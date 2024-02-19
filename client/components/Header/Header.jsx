import "./header.css";
import hdLogo from "client/assets/hdLogo.png";
import storeIcon from "client/assets/store.png";
import truckIcon from "client/assets/truck.png";
import searchIcon from "client/assets/search.png";
import bucketIcon from "client/assets/bucket.png";
import servicesIcon from "client/assets/services.png";
import diyIcon from "client/assets/DIY.png";
import meIcon from "client/assets/me.png";
import cartIcon from "client/assets/cart.png";

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
                <img id="storePic" src={storeIcon} alt="Store Icon" />
              </div>
              <div className="location-divs" id="storeLocation">
                SW Color...
              </div>
              <div className="location-divs" id="storeTime">
                9PM
              </div>
              <div className="location-divs" id="truck">
                <img id="truckPic" src={truckIcon} alt="Truck Icon" />
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
                <img src={searchIcon} alt="Search Icon" />
              </button>
            </div>
            <div className="side-by-side" id="navIcons">
              <img src={bucketIcon} alt="Bucket Icon" />
              <img src={servicesIcon} alt="Services Icon" />
              <img src={diyIcon} alt="DIY Icon" />
              <img src={meIcon} alt="Me Icon" />
            </div>
            <div className="side-by-side" id="cartIcon">
              <img src={cartIcon} alt="Cart Logo" />
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
