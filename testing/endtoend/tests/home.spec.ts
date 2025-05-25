import { test, expect } from "@playwright/test";

test("has title", async ({ page }) => {
  await page.goto("");

  await expect(page).toHaveTitle(/Minmatar Fleet/);

  await expect(page.locator("body")).toMatchAriaSnapshot("");
});
