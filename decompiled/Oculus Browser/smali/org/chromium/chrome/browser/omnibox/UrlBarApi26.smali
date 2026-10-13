.class public Lorg/chromium/chrome/browser/omnibox/UrlBarApi26;
.super LKp0;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LKp0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, LKp0;->l0:Z

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, LKp0;->l0:Z

    return-void
.end method
