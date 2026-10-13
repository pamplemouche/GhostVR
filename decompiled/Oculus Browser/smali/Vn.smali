.class public final LVn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LUn;


# direct methods
.method public constructor <init>(LUn;)V
    .locals 0

    iput-object p1, p0, LVn;->w:LUn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LVn;->w:LUn;

    iget-object v0, v0, LUn;->a:LVm;

    .line 1
    iget-object v0, v0, LVm;->b:Lwm;

    .line 2
    invoke-interface {v0}, Lwm;->disconnect()V

    return-void
.end method
