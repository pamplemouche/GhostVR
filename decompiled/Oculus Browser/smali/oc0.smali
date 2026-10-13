.class public Loc0;
.super LUH0;
.source "PG"


# instance fields
.field public final synthetic a:Lwc0;


# direct methods
.method public constructor <init>(Lwc0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loc0;->a:Lwc0;

    invoke-direct {p0}, LUH0;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabModelSelected(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 0

    .line 1
    iget-object p1, p0, Loc0;->a:Lwc0;

    invoke-virtual {p1}, Lwc0;->c()V

    .line 2
    iget-object p1, p0, Loc0;->a:Lwc0;

    invoke-virtual {p1}, Lwc0;->e()Z

    move-result p2

    invoke-virtual {p1, p2}, Lwc0;->e(Z)V

    return-void
.end method
