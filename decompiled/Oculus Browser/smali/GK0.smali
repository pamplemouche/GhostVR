.class public LGK0;
.super LGM0;
.source "PG"


# instance fields
.field public final synthetic x:LHK0;


# direct methods
.method public constructor <init>(LHK0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LGK0;->x:LHK0;

    invoke-direct {p0}, LGM0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LGK0;->x:LHK0;

    .line 2
    iget-object p1, p1, LHK0;->a:Landroid/view/View;

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
