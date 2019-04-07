mkdir -p dist
echo "Deployment successful!" > dist/index.html

for D in examples/*; do
    if [ -d "${D}" ]; then
        cd "${D}"
        npm install
        npm run build
        mkdir -p "../../dist/${D}"
        cp -r dist/* "../../dist/${D}/."
        cd ../../
    fi
done