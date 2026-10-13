.class public Lna;
.super LT7;
.source "PG"


# instance fields
.field public final synthetic a:Lqa;


# direct methods
.method public constructor <init>(Lqa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lna;->a:Lqa;

    invoke-direct {p0}, LT7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lna;->a:Lqa;

    const/4 v0, 0x0

    iput-object v0, p1, Lqa;->u:LXc;

    .line 2
    iget-object p1, p1, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
