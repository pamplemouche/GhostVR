.class public final synthetic LXZ;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:La00;


# direct methods
.method public constructor <init>(La00;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXZ;->w:La00;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LXZ;->w:La00;

    .line 1
    iget-object v0, v0, La00;->y:LZb1;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v1}, LZb1;->a(ZZ)V

    :cond_0
    return-void
.end method
