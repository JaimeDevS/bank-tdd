import { test, expect } from '@playwright/test';

test('tem titulo', async ({ page }) => {
  await page.goto('https://www.google.com/');

  await expect(page).toHaveTitle(/Google/);
});

test('procurar palavra "teste"', async ({ page }) => {
  await page.goto('https://www.google.com/');
  await page.getByLabel('Pesquisar', { exact: true }).click();
  await page.getByLabel('Pesquisar', { exact: true }).fill('teste');
  await page.locator('.L3eUgb > div:nth-child(2)').click();
  await page.getByRole('button', { name: 'Pesquisa Google' }).click();
  await expect(page.getByRole('link', { name: 'Fast.com: Teste de velocidade da internet Fast.com https://fast.com › ...' })).toBeVisible();
});