import { memo } from "react";

const StartButtonIcon = memo(() => (
  <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
    <path d="M7 4h10c6.3 0 11 5.2 11 12S23.3 28 17 28H7z" />
    <path
      d="M12 9h4.5c3.1 0 6 2.5 6 7s-2.9 7-6 7H12z"
      fill="var(--taskbar-bg, #1f1f1f)"
    />
  </svg>
));

export default StartButtonIcon;
