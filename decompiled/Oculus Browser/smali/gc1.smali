.class public Lgc1;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public w:Lkc1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Ljc1;

    invoke-direct {v0, p1, p2}, Ljc1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lgc1;->w:Lkc1;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lnc1;

    invoke-direct {v0, p1, p2}, Lnc1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lgc1;->w:Lkc1;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lgc1;->w:Lkc1;

    invoke-interface {v0}, Lkc1;->b()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
