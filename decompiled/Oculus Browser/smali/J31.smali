.class public LJ31;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LM31;


# direct methods
.method public constructor <init>(LM31;)V
    .locals 0

    .line 1
    iput-object p1, p0, LJ31;->w:LM31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LJ31;->w:LM31;

    const/4 v1, 0x6

    .line 2
    invoke-virtual {v0, v1}, LM31;->b(I)LC21;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, LM31;->a(LC21;)V

    return-void
.end method
