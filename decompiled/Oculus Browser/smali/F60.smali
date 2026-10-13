.class public LF60;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lm60;


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, LF60;->a:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 2

    .line 1
    iget-object v0, p0, LF60;->a:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    .line 2
    iget-object v0, p0, LF60;->a:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->g:Lorg/chromium/base/Callback;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-static {}, LKY;->c()LR60;

    move-result-object v0

    check-cast v0, LY60;

    invoke-virtual {v0}, LY60;->f()Lv60;

    move-result-object v0

    .line 6
    iget-boolean v1, v0, Lv60;->c:Z

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, v0, Lv60;->b:LXR;

    check-cast v0, LYR;

    invoke-virtual {v0}, LYR;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC20;

    .line 8
    iget-object v0, v0, LC20;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method
