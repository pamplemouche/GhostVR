.class public LEC0;
.super LIC0;
.source "PG"


# instance fields
.field public final synthetic a:LNC0;


# direct methods
.method public synthetic constructor <init>(LNC0;LAC0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LEC0;->a:LNC0;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, LIC0;-><init>(LNC0;LAC0;)V

    return-void
.end method


# virtual methods
.method public a(LJC0;)V
    .locals 2

    .line 1
    iget-object v0, p0, LEC0;->a:LNC0;

    .line 2
    iget-object v0, v0, LNC0;->a:Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;

    .line 3
    new-instance v1, LDC0;

    invoke-direct {v1, p0, p1}, LDC0;-><init>(LEC0;LJC0;)V

    iget-object p1, p0, LEC0;->a:LNC0;

    .line 4
    iget-boolean p1, p1, LNC0;->c:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v1, p1}, LJ/N;->Mdo2WcF5(Ljava/lang/Object;Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
