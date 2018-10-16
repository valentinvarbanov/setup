@import Foundation;

int main() {
    
    @autoreleasepool {
        
        NSArray *args = [[NSProcessInfo processInfo] arguments];
        
        NSLog(@"args: %@", args);
    }
    
    return 0;
}
