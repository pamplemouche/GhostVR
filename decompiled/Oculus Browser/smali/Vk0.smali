.class public LVk0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lorg/chromium/base/Callback;

.field public final synthetic b:LWk0;


# direct methods
.method public constructor <init>(LWk0;Lorg/chromium/base/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, LVk0;->b:LWk0;

    iput-object p2, p0, LVk0;->a:Lorg/chromium/base/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, LVk0;->b:LWk0;

    .line 3
    iput-object p1, v0, LWk0;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p0, LVk0;->a:Lorg/chromium/base/Callback;

    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
