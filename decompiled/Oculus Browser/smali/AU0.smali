.class public final synthetic LAU0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LFU0;


# instance fields
.field public final w:Lorg/chromium/components/signin/AccountTrackerService;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountTrackerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LAU0;->w:Lorg/chromium/components/signin/AccountTrackerService;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 2

    iget-object v0, p0, LAU0;->w:Lorg/chromium/components/signin/AccountTrackerService;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lorg/chromium/components/signin/AccountTrackerService;->a(Z)V

    return-void
.end method
