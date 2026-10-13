.class public final synthetic LfW;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LkW;

.field public final x:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LkW;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LfW;->w:LkW;

    iput-object p2, p0, LfW;->x:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LfW;->w:LkW;

    iget-object v1, p0, LfW;->x:Ljava/lang/Object;

    invoke-virtual {v0, v1}, LkW;->lambda$postResult$1$AsyncTask(Ljava/lang/Object;)V

    return-void
.end method
