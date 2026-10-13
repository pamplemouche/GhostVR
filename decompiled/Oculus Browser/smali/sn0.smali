.class public Lsn0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lwn0;


# direct methods
.method public constructor <init>(Lwn0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsn0;->w:Lwn0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsn0;->w:Lwn0;

    .line 2
    invoke-virtual {v0}, Lwn0;->b()V

    return-void
.end method
