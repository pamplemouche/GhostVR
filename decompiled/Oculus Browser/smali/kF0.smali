.class public final synthetic LkF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LpF0;

.field public final x:Z


# direct methods
.method public constructor <init>(LpF0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LkF0;->w:LpF0;

    iput-boolean p2, p0, LkF0;->x:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LkF0;->w:LpF0;

    iget-boolean v1, p0, LkF0;->x:Z

    .line 1
    invoke-virtual {v0, v1}, LpF0;->a(Z)V

    return-void
.end method
