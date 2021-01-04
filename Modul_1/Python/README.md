# Aufgabe 3 

## subset of checkout_df "materialtape = EBOOK"
sub_EBOOK_df = checkout_df[checkout_df["materialtype"] == "EBOOK"]
sub_EBOOK_df[sub_EBOOK_df["checkouts"]<50]["checkouts"].hist(bins=20)
sub_EBOOK_df[sub_EBOOK_df["checkouts"]>50]["checkouts"].hist(bins=20)

## Analyse "materialtype"
checkout_df["materialtype"].value_counts()
checkout_df["materialtype"].value_counts().plot(kind="bar")

## under50: subset of checkout_df,  "chelouts"<50 
under50=checkout_df[checkout_df["checkouts"]<50]
under50["materialtype"].value_counts().plot(kind="bar")
under50["checkouttype"].value_counts().plot(kind="barh")

## Analyse "checkouttype"
checkout_df["checkouttype"].value_counts()
checkout_df["checkouttype"].value_counts().plot(kind="barh")