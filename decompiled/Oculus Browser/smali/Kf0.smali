.class public final synthetic LKf0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LNf0;


# direct methods
.method public constructor <init>(LNf0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKf0;->w:LNf0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LKf0;->w:LNf0;

    invoke-virtual {v0}, LNf0;->b()V

    return-void
.end method
