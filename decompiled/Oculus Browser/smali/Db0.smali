.class public LDb0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LFb0;

.field public final synthetic x:I


# direct methods
.method public constructor <init>(LFb0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LDb0;->w:LFb0;

    iput p2, p0, LDb0;->x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LDb0;->w:LFb0;

    iget v1, p0, LDb0;->x:I

    check-cast v0, LKb0;

    invoke-virtual {v0, v1}, LKb0;->a(I)V

    return-void
.end method
