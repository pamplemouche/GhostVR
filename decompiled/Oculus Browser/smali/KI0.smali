.class public LKI0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LYI0;


# direct methods
.method public constructor <init>(LYI0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LKI0;->w:LYI0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LKI0;->w:LYI0;

    invoke-virtual {v0}, LYI0;->e()V

    return-void
.end method
