import { useAppContext } from "./../../AppContext";
import starIcon from "client/assets/Star.png";

function CReviewHeaderColumn1() {
  const { averageRating, totalReviews, recommendationPercentage } =
    useAppContext();

  return (
    <div className="column1-header">
      <li>
        <div className="list-review-overview">
          <span className="ratings_avg">{averageRating}</span>
          <span className="reviewsOverviewHeader">
            <span className="starsFromReviews">
              <span>
                <img
                  src={starIcon}
                  alt="Star"
                  style={{ width: "15px", height: "15px" }}
                />
              </span>
              <span>
                <img
                  src={starIcon}
                  alt="Star"
                  style={{ width: "15px", height: "15px" }}
                />
              </span>
              <span>
                <img
                  src={starIcon}
                  alt="Star"
                  style={{ width: "15px", height: "15px" }}
                />
              </span>
              <span>
                <img
                  src={starIcon}
                  alt="Star"
                  style={{ width: "15px", height: "15px" }}
                />
              </span>
              <span>
                <img
                  src={starIcon}
                  alt="Star"
                  style={{ width: "15px", height: "15px" }}
                />
              </span>
            </span>
            <span className="outOfTotalReviews">
              out of {totalReviews} reviews
            </span>
          </span>
        </div>
      </li>
      <li className="recommendWrapper">
        <span className="percentageOfRec">{recommendationPercentage}%</span>
        <span className="recommendProduct"> recommend this product</span>
      </li>
    </div>
  );
}

export default CReviewHeaderColumn1;
