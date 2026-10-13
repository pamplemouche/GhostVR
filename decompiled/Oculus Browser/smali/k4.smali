.class public Lk4;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:I

.field public final synthetic x:Ll4;


# direct methods
.method public constructor <init>(Ll4;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk4;->x:Ll4;

    iput p2, p0, Lk4;->w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk4;->x:Ll4;

    check-cast v0, LQe;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
