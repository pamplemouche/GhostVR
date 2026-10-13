.class public LMh0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:[Lj41;

.field public final synthetic x:LNh0;


# direct methods
.method public constructor <init>(LNh0;[Lj41;)V
    .locals 0

    .line 1
    iput-object p1, p0, LMh0;->x:LNh0;

    iput-object p2, p0, LMh0;->w:[Lj41;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LMh0;->x:LNh0;

    iget-object v0, v0, LNh0;->c:LY31;

    iget-object v1, p0, LMh0;->w:[Lj41;

    check-cast v0, Lf41;

    invoke-virtual {v0, v1}, Lf41;->a(Ljava/lang/Object;)V

    return-void
.end method
