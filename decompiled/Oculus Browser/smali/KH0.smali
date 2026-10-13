.class public LKH0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LlH0;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LKH0;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;
    .locals 2

    .line 1
    new-instance v0, LJH0;

    iget-object v1, p0, LKH0;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {v0, p1, v1}, LJH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/ChromeActivity;)V

    return-object v0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lorg/chromium/chrome/browser/tab/Tab;)Lxa0;
    .locals 1

    .line 1
    new-instance v0, Lxa0;

    invoke-direct {v0, p1}, Lxa0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method

.method public c(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;
    .locals 2

    .line 1
    new-instance v0, LY30;

    new-instance v1, LjH0;

    invoke-direct {v1, p1}, LjH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, LY30;-><init>(Ll40;I)V

    return-object v0
.end method

.method public d(Lorg/chromium/chrome/browser/tab/Tab;)LQG0;
    .locals 1

    .line 1
    new-instance v0, LwH0;

    invoke-direct {v0, p1}, LwH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method
