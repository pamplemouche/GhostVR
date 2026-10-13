.class public final synthetic LpG0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LsG0;


# direct methods
.method public constructor <init>(LsG0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LpG0;->w:LsG0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LpG0;->w:LsG0;

    .line 1
    invoke-virtual {v0}, LsG0;->b()V

    return-void
.end method
