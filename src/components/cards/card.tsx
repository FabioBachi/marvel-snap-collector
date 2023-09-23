import clsx from "clsx";
import parse from "html-react-parser";
import Image from "next/image";
import { useCallback, useState } from "react";
import { FaHeart } from "react-icons/fa";
import { HiOutlineHeart } from "react-icons/hi";
import { Button } from "~/components/ui/button";
import { CardData } from "~/pages/api/cards";

type Props = {
  card: CardData;
};

export const Card = ({ card }: Props) => {
  const [collected, setCollected] = useState(card.collected);

  const toggleCollected = useCallback(() => {
    fetch(`/api/collection/${card.id}`, {
      method: collected ? "DELETE" : "POST",
    }).then(() => {
      setCollected(!collected);
    });
  }, [card, collected]);

  return (
    <div
      className={clsx(
        "relative flex flex-col gap-4 rounded-xl border bg-carbon-200 py-4 text-center shadow-[4px_4px_0] transition",
        collected
          ? "border-emerald-500 shadow-emerald-500"
          : "border-carbon-300/70 shadow-carbon-300/70",
      )}
    >
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
        {card.ability ? (
          parse(card.ability)
        ) : (
          <i>"{parse(card.flavor || "")}"</i>
        )}
      </p>

      <div className="w-full px-4">
        <Button
          className="w-full whitespace-nowrap"
          onClick={toggleCollected}
          size="sm"
          variant={collected ? "destructive" : "default"}
        >
          {collected ? (
            <>
              <HiOutlineHeart className="w-[1.1rem] flex-shrink-0" /> Remove
            </>
          ) : (
            <>
              <FaHeart className="flex-shrink-0" />
              Collect
            </>
          )}
        </Button>
      </div>
    </div>
  );
};
