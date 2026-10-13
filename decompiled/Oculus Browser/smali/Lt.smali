.class public final LLt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LIt;


# instance fields
.field public final synthetic a:LKt;


# direct methods
.method public constructor <init>(LKt;)V
    .locals 0

    iput-object p1, p0, LLt;->a:LKt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, LLt;->a:LKt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lxt;

    return-object v0
.end method
