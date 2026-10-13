.class public Lwc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lyc;


# direct methods
.method public constructor <init>(Lyc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwc;->w:Lyc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwc;->w:Lyc;

    invoke-virtual {v0}, Lyc;->b()V

    return-void
.end method
