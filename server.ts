import express, { Application, Request, Response } from "express";
import cors from "cors";

const app = express();

app.use(cors());

app.get("/", (req: Request, res: Response) => {
  res.json([
    {
      id: "1",
      title: "Book Review: The Bear & The Nightingales",
    },
    {
      id: "2",
      title: "Game Review: Pokemon Brilliant Diamond",
    },
    {
      id: "3",
      title: "Show Review: Alice in Borderland",
    },
    {
      id: "4",
      title: "Manga Review: Eminence in Shadow",
    },
    {
      id: "5",
      title: "Light Novel Review: Author's POV / Damn Good Show",
    },
  ]);
});

app.listen(5000, () => {
  console.log("[server]: Server started on port 5000...");
});
