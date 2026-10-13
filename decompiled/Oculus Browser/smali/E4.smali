.class public LE4;
.super LC4;
.source "PG"


# direct methods
.method public constructor <init>(LC4;Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LC4;-><init>(LC4;)V

    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, LF4;

    invoke-direct {v0, p0, p1}, LF4;-><init>(LC4;Landroid/content/res/Resources;)V

    return-object v0
.end method
