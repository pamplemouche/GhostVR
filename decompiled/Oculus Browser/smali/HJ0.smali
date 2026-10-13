.class public LHJ0;
.super LUH0;
.source "PG"


# instance fields
.field public final synthetic a:LJJ0;


# direct methods
.method public constructor <init>(LJJ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LHJ0;->a:LJJ0;

    invoke-direct {p0}, LUH0;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabModelSelected(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 1

    .line 1
    iget-object p2, p0, LHJ0;->a:LJJ0;

    invoke-interface {p1}, LdI0;->a()Z

    move-result p1

    .line 2
    iget-object p2, p2, LJJ0;->a:LWT;

    invoke-virtual {p2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIJ0;

    .line 3
    invoke-interface {v0, p1}, LIJ0;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
