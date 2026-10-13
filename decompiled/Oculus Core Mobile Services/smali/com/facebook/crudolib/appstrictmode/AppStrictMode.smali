.class public final Lcom/facebook/crudolib/appstrictmode/AppStrictMode;
.super Ljava/lang/Object;
.source "AppStrictMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;,
        Lcom/facebook/crudolib/appstrictmode/AppStrictMode$Penalty;,
        Lcom/facebook/crudolib/appstrictmode/AppStrictMode$Violation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportViolation(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 153
    invoke-static {p0, p1, p2}, Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer;->reportViolation(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    return-void
.end method
