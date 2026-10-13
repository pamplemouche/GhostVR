.class public LgD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LlH0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/searchwidget/SearchActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;
    .locals 1

    .line 1
    new-instance v0, LfD0;

    invoke-direct {v0, p0, p1}, LfD0;-><init>(LgD0;Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lorg/chromium/chrome/browser/tab/Tab;)Lxa0;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lorg/chromium/chrome/browser/tab/Tab;)LQG0;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
