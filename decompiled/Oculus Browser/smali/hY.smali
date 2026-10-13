.class public final synthetic LhY;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LAD0;


# direct methods
.method public constructor <init>(LAD0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LhY;->w:LAD0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LhY;->w:LAD0;

    .line 1
    check-cast v0, LzD0;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, LzD0;->a:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, LzD0;->a()V

    return-void
.end method
