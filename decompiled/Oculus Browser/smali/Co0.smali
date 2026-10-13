.class public final synthetic LCo0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LnU;

.field public final x:LIo0;


# direct methods
.method public constructor <init>(LnU;LIo0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCo0;->w:LnU;

    iput-object p2, p0, LCo0;->x:LIo0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LCo0;->w:LnU;

    iget-object v1, p0, LCo0;->x:LIo0;

    .line 1
    invoke-virtual {v0, v1}, LnU;->a(Ljava/lang/Object;)V

    return-void
.end method
