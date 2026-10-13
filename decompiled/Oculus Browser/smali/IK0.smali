.class public LIK0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LlU0;


# instance fields
.field public w:Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/search_engines/TemplateUrlService;->b()Z

    move-result v0

    const/4 v0, 0x0

    .line 2
    throw v0
.end method
