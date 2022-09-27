import { useEffect, useState } from "react";
import { Link, useParams } from "react-router-dom";

function Power() {
  const [{ data: power, error, status }, setPower] = useState({
    data: null,
    error: null,
    status: "pending",
  });
  const { id } = useParams();

  useEffect(() => {
    fetch(`/powers/${id}`).then((r) => {
      if (r.status === 404) {
        r.json().then((err) =>
        setPower({ data: null, error: err, status: "rejected" })
        );
      } else {
        r.json().then((power) =>
          setPower({ data: power, error: null, status: "resolved" })
        );
      }
    });
  }, [id]);

  if (status === "pending") return <h1>Loading...</h1>;
  if (status === "rejected") return <h1>Error: {console.log(error)}</h1>;

  return (
    <section>
      <h2>{power.name ? power.name : false}</h2>
      <p>{power.description}</p>
      <p>
        <Link to="/hero_powers/new">Add Hero Power</Link>
      </p>
      <p>
        <Link to={`/powers/${power.id}/edit`}>Edit Power Description</Link>
      </p>
    </section>
  );
}

export default Power;
