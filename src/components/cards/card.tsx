import Image from "next/image";
import { FaHeart } from "react-icons/fa";
import { Button } from "~/components/ui/button";

export const Card = () => (
  <div className="flex flex-col gap-4 rounded-xl border border-carbon-300/70 p-4 text-center shadow-[4px_4px_0] shadow-carbon-300/70">
    <div className="pb-full relative">
      <Image
        alt="Nightcrawler"
        className="object-contain"
        fill
        src="https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/181_1666708245.webp?v=125"
      />
    </div>

    <p>You can move this once.</p>

    <Button size="sm">
      <FaHeart />
      Collect
    </Button>
  </div>
);
