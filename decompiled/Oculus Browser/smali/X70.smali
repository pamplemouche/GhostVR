.class public final synthetic LX70;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Le80;

.field public final x:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(Le80;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX70;->w:Le80;

    iput-object p2, p0, LX70;->x:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LX70;->w:Le80;

    iget-object v1, p0, LX70;->x:Lorg/chromium/base/Callback;

    .line 1
    iget-object v0, v0, Le80;->e:Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
