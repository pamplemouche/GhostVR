.class public final synthetic LC10;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LH10;

.field public final x:Z


# direct methods
.method public constructor <init>(LH10;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC10;->w:LH10;

    iput-boolean p2, p0, LC10;->x:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LC10;->w:LH10;

    iget-boolean v1, p0, LC10;->x:Z

    .line 1
    iget v0, v0, LH10;->b:I

    const/16 v2, 0x4e

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "OfflinePrefetch"

    .line 2
    :goto_0
    invoke-static {v1, v0}, LJ/N;->MeVqfhfI(ZLjava/lang/String;)V

    return-void
.end method
