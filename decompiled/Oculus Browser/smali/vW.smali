.class public final synthetic LvW;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LwW;

.field public final x:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(LwW;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LvW;->w:LwW;

    iput-object p2, p0, LvW;->x:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LvW;->w:LwW;

    iget-object v1, p0, LvW;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, LwW;->b(Ljava/lang/Runnable;)V

    return-void
.end method
