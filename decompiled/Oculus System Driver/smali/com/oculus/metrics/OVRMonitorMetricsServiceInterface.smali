.class public interface abstract Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;
.super Ljava/lang/Object;
.source "OVRMonitorMetricsServiceInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract updateMetrics(Ljava/lang/String;JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateMetrics2(Ljava/lang/String;JLjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateUtilization(Ljava/lang/String;JFF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateUtilization2(Ljava/lang/String;JFF)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
