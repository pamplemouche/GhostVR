.class public Lcom/oculus/browser/GatekeeperJni$1;
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
.method public setInstanceForTesting(Lcom/oculus/browser/Gatekeeper$Natives;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/oculus/browser/GatekeeperJni;->access$002(Lcom/oculus/browser/Gatekeeper$Natives;)Lcom/oculus/browser/Gatekeeper$Natives;

    return-void
.end method

.method public bridge synthetic setInstanceForTesting(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/oculus/browser/Gatekeeper$Natives;

    invoke-virtual {p0, p1}, Lcom/oculus/browser/GatekeeperJni$1;->setInstanceForTesting(Lcom/oculus/browser/Gatekeeper$Natives;)V

    return-void
.end method
