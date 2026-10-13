.class public Lai;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lbi;


# direct methods
.method public constructor <init>(Lbi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lai;->w:Lbi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lai;->w:Lbi;

    invoke-virtual {v0}, Lbi;->b()V

    return-void
.end method
