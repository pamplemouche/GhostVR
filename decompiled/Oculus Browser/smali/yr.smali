.class public final synthetic Lyr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final a:Lxr;


# direct methods
.method public constructor <init>(Lxr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyr;->a:Lxr;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lyr;->a:Lxr;

    invoke-virtual {v0, p1}, Lxr;->a(Landroid/os/Message;)Z

    const/4 p1, 0x1

    return p1
.end method
