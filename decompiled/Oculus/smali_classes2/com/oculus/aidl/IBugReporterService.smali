.class public interface abstract Lcom/oculus/aidl/IBugReporterService;
.super Ljava/lang/Object;
.source "IBugReporterService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/aidl/IBugReporterService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getReportId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract openScreenshotFile()Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
