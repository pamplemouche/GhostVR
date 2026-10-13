.class public LdD0;
.super LDc1;
.source "PG"


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/searchwidget/SearchActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, LDc1;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public f()LCc1;
    .locals 2

    .line 1
    new-instance v0, LIh0;

    invoke-virtual {p0}, LDc1;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-direct {v0, v1}, LIh0;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method
