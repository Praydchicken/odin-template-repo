#!/bin/bash
echo "Switching to gh-pages..." && \
git checkout gh-pages && \
echo "Merging main..." && \
git merge main --no-edit && \
echo "Building..." && \
npm run build && \
echo "Staging dist..." && \
git add dist -f && \
echo "Committing..." && \
git commit -m "Deployment commit" && \
echo "Pushing to gh-pages..." && \
git subtree push --prefix dist origin gh-pages && \
echo "Switching back to main..." && \
git checkout main && \
echo "Done! Deployed successfully"
