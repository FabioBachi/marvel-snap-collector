import { Cards } from "@prisma/client";
import parse from "html-react-parser";
import Image from "next/image";
import { FaHeart } from "react-icons/fa";
import { Button } from "~/components/ui/button";

type Props = {
  card: Cards;
};

export const Card = ({ card }: Props) => (
  <div className="relative flex flex-col gap-4 rounded-xl border border-carbon-300/70 bg-carbon-200 py-4 text-center shadow-[4px_4px_0] shadow-carbon-300/70">
    <div className="relative pb-full">
      <Image
        alt={card.name}
        className="object-contain"
        fill
        src={card.art}
        sizes="(max-width: 768px) 55vw, 33vw"
      />
    </div>

    <p className="absolute top-0 opacity-0">{card.name}</p>

    <p className="flex-grow px-4">
      {card.ability ? parse(card.ability) : <i>"{parse(card.flavor || "")}"</i>}
    </p>

    <div className="w-full px-4">
      <Button size="sm" className="w-full">
        <FaHeart />
        Collect
      </Button>
    </div>
  </div>
);
