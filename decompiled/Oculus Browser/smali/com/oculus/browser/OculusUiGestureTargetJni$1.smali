.class public Lcom/oculus/browser/OculusUiGestureTargetJni$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJT;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setInstanceForTesting(Lcom/oculus/browser/OculusUiGestureTarget$Natives;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/oculus/browser/OculusUiGestureTargetJni;->access$002(Lcom/oculus/browser/OculusUiGestureTarget$Natives;)Lcom/oculus/browser/OculusUiGestureTarget$Natives;

    return-void
.end method

.method public bridge synthetic setInstanceForTesting(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/oculus/browser/OculusUiGestureTarget$Natives;

    invoke-virtual {p0, p1}, Lcom/oculus/browser/OculusUiGestureTargetJni$1;->setInstanceForTesting(Lcom/oculus/browser/OculusUiGestureTarget$Natives;)V

    return-void
.end method
