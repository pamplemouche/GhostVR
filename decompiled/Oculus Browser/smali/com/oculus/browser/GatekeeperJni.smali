.class public final Lcom/oculus/browser/GatekeeperJni;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/oculus/browser/Gatekeeper$Natives;


# static fields
.field public static final TEST_HOOKS:LJT;

.field public static testInstance:Lcom/oculus/browser/Gatekeeper$Natives;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oculus/browser/GatekeeperJni$1;

    invoke-direct {v0}, Lcom/oculus/browser/GatekeeperJni$1;-><init>()V

    sput-object v0, Lcom/oculus/browser/GatekeeperJni;->TEST_HOOKS:LJT;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcom/oculus/browser/Gatekeeper$Natives;)Lcom/oculus/browser/Gatekeeper$Natives;
    .locals 0

    .line 1
    sput-object p0, Lcom/oculus/browser/GatekeeperJni;->testInstance:Lcom/oculus/browser/Gatekeeper$Natives;

    return-object p0
.end method

.method public static get()Lcom/oculus/browser/Gatekeeper$Natives;
    .locals 1

    .line 1
    new-instance v0, Lcom/oculus/browser/GatekeeperJni;

    invoke-direct {v0}, Lcom/oculus/browser/GatekeeperJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setGatekeeperData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, LJ/N;->MruLOY9q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGatekeeperState(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, LJ/N;->M1YM8c6t(Ljava/lang/String;)V

    return-void
.end method
