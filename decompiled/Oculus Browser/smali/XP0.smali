.class public final synthetic LXP0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LYP0;

.field public final x:Ljava/lang/Integer;

.field public final y:LUf1;


# direct methods
.method public constructor <init>(LYP0;Ljava/lang/Integer;LUf1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXP0;->w:LYP0;

    iput-object p2, p0, LXP0;->x:Ljava/lang/Integer;

    iput-object p3, p0, LXP0;->y:LUf1;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LXP0;->w:LYP0;

    iget-object v1, p0, LXP0;->x:Ljava/lang/Integer;

    iget-object v2, p0, LXP0;->y:LUf1;

    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, LYP0;->a:LWD0;

    invoke-static {v0}, LTD0;->a(LWD0;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v2, Lbg1;

    invoke-virtual {v2, v0}, Lbg1;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4
    throw v0
.end method
