.class public Lhg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lmg;


# direct methods
.method public constructor <init>(Lmg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhg;->w:Lmg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lhg;->w:Lmg;

    .line 2
    iget-object v0, v0, Lmg;->y:Lpf;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lpf;->E:Z

    .line 4
    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    return-void
.end method
