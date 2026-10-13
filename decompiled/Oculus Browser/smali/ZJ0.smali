.class public LZJ0;
.super LUH0;
.source "PG"


# instance fields
.field public final synthetic a:LkK0;


# direct methods
.method public constructor <init>(LkK0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZJ0;->a:LkK0;

    invoke-direct {p0}, LUH0;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabModelSelected(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 0

    .line 1
    iget-object p1, p0, LZJ0;->a:LkK0;

    invoke-static {p1}, LkK0;->a(LkK0;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onTabStateInitialized()V
    .locals 2

    .line 1
    iget-object v0, p0, LZJ0;->a:LkK0;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, LkK0;->g0:Z

    return-void
.end method
